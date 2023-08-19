function alterarnome(nome){
    const urloriginal = window.location.href;
    
    const reatorada = `${urloriginal}/${nome}`;

    history.pushState(null, null, reatorada);
}