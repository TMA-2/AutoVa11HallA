# Auto VA-11 Hall-A

![GitHub repo size](https://img.shields.io/github/repo-size/TMA-2/AutoVa11HallA)
![GitHub commits since latest release](https://img.shields.io/github/commits-since/TMA-2/AutoVa11HallA/latest)
[![Static Badge](https://img.shields.io/badge/made%20with-PowerShell%20Pro%20Tools%20VS2022-darkviolet)](https://github.com/ironmansoftware/powershell-pro-tools/)
[![Static Badge](https://img.shields.io/badge/made%20with-VSCode-blue)](https://code.visualstudio.com)

<img width="884" alt="autovalhalla-finally" src="https://github.com/user-attachments/assets/751887b2-0eca-45a4-9473-30edcece4c7a" />

## Description
This is a dumb little utility that will automatically mix drinks in the game **VA-11 Hall-A**. It does this by finding the running executable, getting the window handle, and sending a string of keys corresponding to the necessary ingredients. All *mixable* drinks are contained, plus options for making them "Big" (i.e. double), and optional Karmotrine, as certain drinks don't call for a specific amount.

The key-sending is accomplished via the AutoItX PowerShell module (although it's far from perfect, and it would be ideal to get rid of it in favor of native .NET methods). The entire thing is written in PowerShell, contained in a PowerShell Pro Tools VS 2022 project. Not my favorite way to do things, but it certainly makes form building easier so the script itself can be edited in VS Code.

## Current Features
- A searchable list of drinks
- "Big" (double) option
- Selection by tag feature (including those that aren't listed in the game's UI)
- It works, I guess.
- Eye-watering colors.

<img width="206" alt="AutoVa11HallA-Tag" src="https://github.com/user-attachments/assets/c0ecaf23-c17b-4287-b8f3-58b5926aa287" />

## Planned Features
- [x] "Sticky" mode -- the form follows the game window, at least in windowed mode.
- [ ] Fuller information display, including price, mixed / blended, drink descriptions, etc.
- [ ] Searching by drink price (this comes up a few times in the game).

## Probably not possible
- [ ] Automating the game via mouse clicks. GameMaker Studio doesn't seem to like this, regardless of which method I've tried thus far.
- [ ] Anything that involves hooking into the game's process and dealing with memory. I'm not a programmer.

