<!DOCTYPE html>
<html>
<head>
    <title>Rock, Paper, Scissors Game</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f0f0f0;
            margin: 0;
            padding: 20px;
        }
        h1 {
            color: #333;
        }
        button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #007bff;
            color: #fff;
            border: none;
            cursor: pointer;
            margin-top: 20px;
        }
        button:hover {
            background-color: #0056b3;
        }
        #game {
            display: none;
        }
        #results {
            margin-top: 20px;
            text-align: left;
        }
    </style>
</head>
<body>
    <h1>Welcome to the Rock, Paper, Scissors Game</h1>
    <button onclick="startGame()">Start Game</button>
    <div id="game">
        <p>Choose one:</p>
        <button onclick="playerChoice('rock')">Rock</button>
        <button onclick="playerChoice('paper')">Paper</button>
        <button onclick="playerChoice('scissors')">Scissors</button>
        <div id="results"></div>
    </div>

    <script>
        let playerScore = 0;
        let computerScore = 0;

        function startGame() {
            document.getElementById('game').style.display = 'block';
        }

        function playerChoice(choice) {
            const computerChoices = ['rock', 'paper', 'scissors'];
            const computerChoice = computerChoices[Math.floor(Math.random() * 3)];
            let result;

            if (choice === 'rock' && computerChoice === 'scissors' ||
                choice === 'paper' && computerChoice === 'rock' ||
                choice === 'scissors' && computerChoice === 'paper') {
                playerScore++;
                result = 'You win!';
            } else if (choice === computerChoice) {
                result = "It's a tie!";
            } else {
                computerScore++;
                result = 'Computer wins!';
            }

            document.getElementById('results').innerHTML = `
                <p>You chose: ${choice}</p>
                <p>Computer chose: ${computerChoice}</p>
                <p>Result: ${result}</p>
                <p>Your score: ${playerScore}</p>
                <p>Computer's score: ${computerScore}</p>
            `;
        }
    </script>
</body>
</html>
