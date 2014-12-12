## The Scaffolding

### Intro

The `Scaffolding` allows you scaff your new project quickly. 

The following features and functionallity are provided by `Saffolding`

* Scaff new sbt project

### Step 1/3: Installation

You can install `scaffolding` easily via Pathogen or Vundle

[Pathogen](https://github.com/tpope/vim-pathogen)

```
cd ~/.vim/bundle
git clone https://github.com/rain1024/scaffolding
```

[Vundle](https://github.com/gmarik/Vundle.vim)

Add below code to your `~/.vimrc`

```
Plugin 'rain1024/scaffolding'
```

### Step 2/3: Configuration

You must configuration plugin directory

```
let g:ScaffoldingDirectory='/home/rain/.vim/bundle/scaffolding/'
```

### Step 3/3: Usage

To scaffolding new project in current folder

```
:call SbtScaff()
```
