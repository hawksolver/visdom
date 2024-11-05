import Parse from 'parse/react-native.js';
// Inicialização do Parse com suas credenciais Back4App
Parse.initialize('njNAqSQm1Bg0LoKu45fURFLlsIPwJ6TFxaCpGLh7', 'RLCspUJ0lSNK8XFYr3r0gU4qyGhQuEkFg81tRZjk');
Parse.serverURL = 'https://parseapi.back4app.com/';


document.addEventListener('DOMContentLoaded', function() {
    // Obtém os dados do usuário armazenados no localStorage
    const user = JSON.parse(localStorage.getItem('currentUser'));

    // Verifica se o usuário está logado
    if (!user) {
        // Se não houver dados do usuário, redireciona para a página de login
        window.location.href = '../telas/cadastro.html';
    } else {
        // Se o usuário estiver logado, preenche os dados na página
        document.getElementById('nome-usuario').textContent = `${user.nome} ${user.sobrenome}`;
        document.getElementById('email-usuario').textContent = user.email;
        document.getElementById('profile-picture-img').src = user.profilePicture || '../assets/img/team/1.jpg'; // Define uma imagem padrão se não houver
    }

    // Função para carregar compras recentes
    loadRecentPurchases();

    // Adiciona o evento de logout
    document.getElementById('logout-button').addEventListener('click', logoutUser);
});


// Função para deslogar o usuário
function logoutUser() {
    Parse.User.logOut().then(() => {
        localStorage.removeItem('currentUser'); // Remove o usuário do localStorage
        window.location.href = '../telas/cadastro.html'; // Redireciona para a página de login
    }).catch((error) => {
        console.error("Erro ao deslogar:", error);
    });
}