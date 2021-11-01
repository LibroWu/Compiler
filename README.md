## Compiler Muad'Dib

A toy compiler of *Mx\* Language* ,which is a traditional tutoring language of *ACM Class, Shanghai Jiao Tong University*.

g4 is in imitation of [Antlr-v4's official cpp g4](https://github.com/antlr/grammars-v4), where the parser tree uses child list to store child nodes instead of binary-tree pattern. That means although the expression's sub parser-tree will be very deep, but it's depth is fixed.

The AST-Builder part and Semantic-Checker have done and passed online judge.

Working on IR-Builder/Unoptimized Code Generation.