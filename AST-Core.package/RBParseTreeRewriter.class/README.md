ParseTreeRewriter walks over and transforms its RBProgramNode (tree). If the tree is modified, then answer is set to true, and the modified tree can be retrieved by the #tree method.


Here is a little script to rewrite a self halt into self dormantHalt. 

	| rewriter node |
	rewriter := RBParseTreeRewriter new.
	rewriter replace: 'self halt' with: 'self dormatHalt'.
	node := (ProtoObjectTest>>#testIfNil) parseTree.
	rewriter executeTree: node.
	^ node formattedCode

Note how do we get the transformed code. You can access the rewritten tree as follows:
rewriter tree.

Now here is a full script showing how to compile the method back 

   | rewriter ok method |
	rewriter := RBParseTreeRewriter new.
	rewriter replaceMethod: self searchPattern with: self targetPattern.
	method := (BIArrayExpressionTest>>#testNoExtraSpaceAroundPeriod).
	ok := rewriter executeTree: method parseTree.
	ok ifFalse: [ ^ 'did not work' ].
	Author 
		useAuthor: 'Refactoring'
		during: [  
			method origin 
				compile: rewriter tree formattedCode 
				classified: method protocol ]


Have a look at the users of deprecated:

		deprecated: 'Please use #isPinnedInMemory instead'
		transformWith: '`@receiver isPinned' -> '`@receiver isPinnedInMemory'.

You can also have a look at the ParseTreeRewriterTest class


Instance Variables:
	tree	<RBProgramNode>	the parse tree we're transforming
			
	