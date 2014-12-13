## The Scaffolding

```
  _____   __   ____  _____  _____   ___   _      ___    ____  ____    ____
 / ___/  /  ] /    ||     ||     | /   \ | |    |   \  |    ||    \  /    |
(   \_  /  / |  o  ||   __||   __||     || |    |    \  |  | |  _  ||   __|
 \__  |/  /  |     ||  |_  |  |_  |  O  || |___ |  D  | |  | |  |  ||  |  |
 /  \ /   \_ |  _  ||   _] |   _] |     ||     ||     | |  | |  |  ||  |_ |
 \    \     ||  |  ||  |   |  |   |     ||     ||     | |  | |  |  ||     |
  \___|\____||__|__||__|   |__|    \___/ |_____||_____||____||__|__||___,_|
                            The next scaffolding generation for Vim!       
```

### Intro

The `Scaffolding` allows you scaff your new project quickly. 

The following features and functionallity are provided by `Saffolding`

* Scaff new project. We now support [sbt](https://github.com/rain1024/scaffolding/wiki/SBT), [python](https://github.com/rain1024/scaffolding/wiki/Python)

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

Open `vim` in a folder. Inside `vim`, run command

```
:Scaff

Enter type of project (python, sbt, q for quit): sbt
Enter name of your new sbt project: hello 

Project hello is created
Enjoy Coding!
```

You will see a new folder 'hello' is created.

```
> cd hello
> sbt run
Hello, world
```

### License

Copyright © 2014 rain1024. Distributed under the same terms as Vim itself.  See `:help license`
