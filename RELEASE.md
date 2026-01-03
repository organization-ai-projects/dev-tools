# Gestion des Versions et Publication

## Conventions de Versioning

Ce projet suit le versioning sémantique (SemVer) :

- **MAJEUR** : Changements incompatibles avec les versions précédentes.
- **MINEUR** : Nouvelles fonctionnalités rétrocompatibles.
- **PATCH** : Corrections de bugs rétrocompatibles.

## Processus de Versioning Automatique

1. **Détection des changements** :

   - Les messages de commit doivent suivre le format [Conventional Commits](https://www.conventionalcommits.org/).
   - Exemple :

     ```bash
     feat: Ajouter une nouvelle commande CLI
     fix: Corriger un bug dans le parser
     ```

2. **Génération de version** :

   - Utilisation d'un outil comme [cargo-release](https://github.com/crate-ci/cargo-release) pour incrémenter automatiquement la version.

3. **Publication** :

   - La commande suivante publie le workspace complet :

     ```bash
     cargo publish --workspace
     ```

## Publication sur crates.io

1. **Créer un compte** :

   - Assurez-vous d'avoir un compte sur [crates.io](https://crates.io/).

2. **Configurer l'authentification** :

   - Ajoutez votre clé API :

     ```bash
     cargo login <votre_clé_api>
     ```

3. **Vérification avant publication** :

   - Testez votre projet :

     ```bash
     cargo test
     ```

   - Vérifiez les warnings :

     ```bash
     cargo check
     ```

4. **Publier** :

   - Publiez chaque crate si nécessaire :

     ```bash
     cargo publish -p <nom_du_crate>
     ```

## Gestion du Workspace

- Ce projet utilise un workspace Cargo pour gérer plusieurs crates.
- Structure typique :

  ```text
  dev-forge/
  ├── Cargo.toml                    # Workspace
  ├── crates/
  │   ├── dev-forge-core/           # Lib (logic)
  │   └── dev-forge-cli/            # Bin (interface)
  ```

- Commandes utiles :

  - Construire tout le workspace :

    ```bash
    cargo build --workspace
    ```

  - Tester tout le workspace :

    ```bash
    cargo test --workspace
    ```

## Checklist avant une Release

- [ ] Tous les tests passent.
- [ ] Les dépendances sont à jour.
- [ ] Le fichier `CHANGELOG.md` est mis à jour.
- [ ] La version est incrémentée correctement.
- [ ] La publication est testée en local.

---

**Note** : Assurez-vous de respecter les bonnes pratiques pour éviter les erreurs lors de la publication.
