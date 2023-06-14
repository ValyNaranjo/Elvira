// Bayesian Network
//   Elvira format 

bnet  "Tarea3" { 

// Network Properties

kindofgraph = "directed";
visualprecision = "0.00";
version = 1.0;
default node states = (presente , ausente);

// Variables 

node PALUDISMO(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =303;
pos_y =212;
relevance = 7.0;
purpose = "";
num-states = 2;
states = ("presente" "ausente");
}

node GOTA-GRUESA(finite-states) {
kind-of-node = chance;
type-of-variable = finite-states;
pos_x =606;
pos_y =211;
relevance = 7.0;
purpose = "";
num-states = 2;
states = ("positivo" "negativo");
}

// Links of the associated graph:

link PALUDISMO GOTA-GRUESA;

//Network Relationships: 

relation PALUDISMO { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.003 0.997 );
}

relation GOTA-GRUESA PALUDISMO { 
comment = "";
kind-of-relation = potential;
deterministic=false;
values= table (0.992 6.0E-4 0.008 0.9994 );
}

}
