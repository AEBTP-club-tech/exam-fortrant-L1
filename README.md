# Projet Fortran — Collection d'exemples & exercices

Petit dépôt contenant plusieurs programmes Fortran pédagogiques : triangularisation, inversion, produit matriciel, déterminant, etc.

## Structure du dépôt

- [README.md](README.md) — ce fichier
- [examen/pcm.f90](examen/pcm.f90) — programme PPCM (`PPCM`)
- [examen/pyramide.f90](examen/pyramide.f90) — affichage d'une pyramide (`triangle`)
- [examen/.vscode/settings.json](examen/.vscode/settings.json)
- [examples/determinant.f90](examples/determinant.f90) — calcul du déterminant (`determinant`)
- [examples/inverse2.0.f90](examples/inverse2.0.f90) — inversion matricielle (`inversion`)
- [examples/pascal.f90](examples/pascal.f90) — triangle de Pascal (`Pascal`)
- [examples/pgcd.f90](examples/pgcd.f90) — maximum / PGCD exemple (`maximum`)
- [examples/produit.f90](examples/produit.f90) — produit matriciel (`produit_matriciel`)
- [examples/transposition.f90](examples/transposition.f90) — transposition (`transposition`)
- [examples/triang_inf.f90](examples/triang_inf.f90) — triangularisation inférieure (`triangularisation_inferieur`)
- [examples/triang_sup.f90](examples/triang_sup.f90) — triangularisation supérieure (`triangularisation_superieur`)
- [examples/entree.txt](examples/entree.txt) — fichier d'exemple pour l'entrée
- [examples/.vscode/settings.json](examples/.vscode/settings.json)
- [.gitignore](.gitignore)

Exemples de symboles (programmes) :
- [`triangularisation_superieur`](examples/triang_sup.f90)
- [`triangularisation_inferieur`](examples/triang_inf.f90)
- [`produit_matriciel`](examples/produit.f90)
- [`inversion`](examples/inverse2.0.f90)
- [`determinant`](examples/determinant.f90)

## Compilation

Ce projet utilise du Fortran fixe (sources .f90). Avec gfortran :

- Compiler un fichier :
````sh
gfortran examples/produit.f90 -o produit
````
- Compiler tous les fichiers (exemple) :
````sh
gfortran examples/*.f90 -o all_executables
````

## Exécution

- Lancer un programme :
````sh
./produit
````
- Lancer tous les exécutables (exemple) :
````sh
for exe in ./all_executables/*; do
    ./"$exe"
done
````

## Aide

Pour toute question ou contribution, n'hésitez pas à ouvrir une issue ou à soumettre une pull request.

## Licence

Ce projet est sous licence MIT. Voir le fichier [LICENSE](LICENSE) pour plus d'informations.