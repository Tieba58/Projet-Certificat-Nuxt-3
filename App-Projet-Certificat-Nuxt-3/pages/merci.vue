<template>

    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Tieba Boutik</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="">Accueil</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Fin de Commande</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->

    <div class="container py-5">
        <div class="text-center">
            <h1 class="mb-4 text-success">Merci pour votre commande !</h1>
            <p class="lead">Votre commande a été enregistrée avec succès.</p>

            <NuxtLink to="/" class="btn btn-primary mt-3">
                Retour à l'accueil
            </NuxtLink>
        </div>
    </div>
</template>
