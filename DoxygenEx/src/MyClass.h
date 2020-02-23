#pragma once

namespace zxwnstn {

	/**
	*
	*@brief 실험용으로 만드러본 MyClass다리
	*/
	class MyClass
	{
	public:
		void doSomething();
		int add(int a, int b);
		int divide(int a, int b);

	private:
		int m_Value;
		Node* m_Node;
	};
	/**
	*
	*@brief MyClass를 상속받는 seop클래스 다리
	*/
	class SeopClass
		:public MyClass
	{
	public:
	private:
		int seop_Value;
	};
	/**
	*
	*@brief MyClass 안에 들어가는 Node다리
	*/
	class Node
	{
	public:
		Node* curNode;
		Node* nextNode;
		Node* prevNode;
	};

}