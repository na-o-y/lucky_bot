### Commands

#### Haskell

On slack chat, type `haskell (expr)` or `hs! (expr)` then lucky-bot evaluates your expression and says the result.

### Deploy

Please make sure that npm and redis are installed.

You should init npm modules and configure run.sh with your slack setting.

    % npm install
    % cp run.sh.sample run.sh

To start bot,

    % sh run.sh
