Unreal Build System
===================

This project aims to configure tools and create documentation to help you learn and set up your Unreal build system. Use this as an inspirational starting point to take your project's CI/CD to the next level. Please keep in mind that these are not production setup recommendations but only easy setups for learning purposes. Have fun!

## About Unreal

The main source of info comes from the [Unreal Engine GitHub project](https://github.com/EpicGames/UnrealEngine) _(if you get 404, here is how to [access Unreal Engine source code on GitHub](https://www.unrealengine.com/en-US/ue-on-github))_. After cloning the project, switch to the desired _branch_ or _tag_ according to the version you are most interested.

### Horde

You will need to create a [personal access tokens (classic)](https://github.com/settings/tokens) to download the `ghcr.io` image _([authentication docs](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens))_. Just `read:packages` should be enough.

These are the minimal necessary commands to start the server:
```bash
docker login ghcr.io -u USERNAME
# enter your access token with read:packages
# https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry

docker compose up -d
```

Learn more from the folder [Engine/Source/Programs/Horde](https://github.com/EpicGames/UnrealEngine/tree/release/Engine/Source/Programs/Horde).

## License

[MIT License](LICENSE)
