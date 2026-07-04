# Dossier knowledge_base — PDFs officiels à placer ici

Placer les fichiers PDF suivants dans ce dossier avant d'exécuter le script d'ingestion.

## Fichiers requis

| Nom du fichier | Description |
|---|---|
| decret_2018_366_code_marches.pdf | Décret n°2018/366 du 20 juin 2018 — Code des marchés publics |
| guide_utilisateur_coleps_v2.pdf | Guide utilisateur COLEPS v2 (MINMAP/ANTIC) |
| circulaire_004_CAB_PM_2005.pdf | Circulaire n°004/CAB/PM du 30/12/2005 |
| textes_application_marches.pdf | Textes d'application des marchés publics |

## Sources officielles

- Code des marchés : https://minmap.cm (textes réglementaires)
- Guide COLEPS : https://www.marchespublics.cm (aide en ligne)
- Circulaires : https://armp.cm (documentation)

## Commande d'ingestion

```bash
# Ingérer toutes les sources
python scripts/ingest.py --source all

# Ingérer une source spécifique
python scripts/ingest.py --source code_marches
python scripts/ingest.py --source guide_coleps
```

## Important

Ce dossier est dans .gitignore — les PDFs ne sont pas versionnés.
