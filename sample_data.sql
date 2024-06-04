SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE sentiment_analysis_results (
    id INT AUTO_INCREMENT PRIMARY KEY,
    text_input TEXT NOT NULL,
    polarity DECIMAL(5, 2) NOT NULL,
    subjectivity DECIMAL(5, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=0;

INSERT INTO sentiment_analysis_results (text_input, polarity, subjectivity) VALUES
    ("Roma è una città eterna, ricca di storia e cultura.", 1.00, 0.80),
    ("Parigi è romantica, ma troppo affollata per i miei gusti.", 0.20, 0.90),
    ("New York è frenetica e stimolante, non mi annoierei mai.", 0.80, 0.70),
    ("Tokyo è una città affascinante, ma anche molto costosa.", 0.40, 0.60),
    ("Ho trovato Londra un po' grigia e piovosa.", -0.30, 0.50);