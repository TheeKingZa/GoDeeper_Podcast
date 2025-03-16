// Set current year in footer
document.getElementById('currentYear').textContent = new Date().getFullYear();

document.addEventListener('DOMContentLoaded', async () => {
    try {
        const response = await fetch('./data/iframe.json');
        const data = await response.json();
        
        const episodesContainer = document.getElementById('episodes-container');
        
        data.forEach(episode => {
            const episodeCard = document.createElement('div');
            episodeCard.className = 'episode-card';
            
            episodeCard.innerHTML = `
                <div class="episode-iframe">
                    ${episode.iframe}
                </div>
                <div class="episode-content">
                    <h3>${episode.title || 'Episode Title'}</h3>
                    <p>${episode.description || 'Episode description goes here.'}</p>
                </div>
            `;
            
            episodesContainer.appendChild(episodeCard);
        });
    } catch (error) {
        console.error('Error loading episodes:', error);
    }
});