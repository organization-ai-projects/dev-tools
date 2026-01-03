# Guide de Contribution

Merci de vouloir contribuer à ce projet ! Voici quelques règles pour garantir une collaboration efficace et harmonieuse.

## Processus de Contribution

1. **Forker le dépôt** : Créez une copie de ce dépôt sur votre compte GitHub.
2. **Créer une branche de travail** : Travaillez sur une branche dédiée pour chaque fonctionnalité ou correction de bug. Cette branche doit être créée à partir de `dev`.

   ```bash
   git checkout dev
   git checkout -b nom-de-la-branche
   ```

3. **Pousser la branche de travail** : Une fois votre travail terminé ou prêt à être partagé, poussez votre branche vers le dépôt distant.

   ```bash
   git push origin nom-de-la-branche
   ```

4. **Soumettre une Pull Request (PR)** :
   - **Vers `dev`** :
     - Ouvrez une PR de votre branche de travail vers la branche `dev`.
     - Cette branche est utilisée pour le développement actif.
   - **Vers `main`** :
     - Une fois que `dev` est stable, ouvrez une PR de `dev` vers `main` pour les releases stables.

## Règles de Codage

- Respectez les conventions de codage définies dans le projet.
- Ajoutez des tests pour toute nouvelle fonctionnalité ou correction de bug.
- Assurez-vous que votre code est bien formaté et documenté.

## Règles pour les Commits

Nous utilisons la convention [Conventional Commits](https://www.conventionalcommits.org/) pour garantir des messages de commit clairs et standardisés. Tous les messages de commit doivent être rédigés en anglais. Voici les types de commits acceptés :

- **feat** : Ajout d'une nouvelle fonctionnalité.
- **fix** : Correction d'un bug.
- **docs** : Modifications de la documentation.
- **style** : Changements de style (formatage, espaces, etc.) sans impact sur le code.
- **refactor** : Refactorisation du code sans ajout de fonctionnalité ni correction de bug.
- **test** : Ajout ou modification de tests.
- **chore** : Changements mineurs (mise à jour des dépendances, configuration, etc.).

### Exemple de message de commit

```text
feat: Add a command to analyze errors

This command allows analyzing compiler errors and suggesting solutions.
```

- La première ligne doit être concise (50 caractères max) et décrire le changement.
- Ajoutez une ligne vide après la première ligne.
- Fournissez une description plus détaillée si nécessaire.

## Revue de Code

- Les PR doivent être approuvées par au moins un mainteneur avant d'être fusionnées.
- Répondez rapidement aux commentaires sur votre PR.

## CI/CD

- Toutes les PR doivent passer les tests automatisés avant d'être fusionnées.
- Vérifiez que votre code ne casse pas le pipeline CI.

Merci pour votre contribution ! 🚀
