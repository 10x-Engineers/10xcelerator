class c_1872_1;
    integer i = -310;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1872_1;
    c_1872_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00xzxzx1zz1010xzxx10x0zz10x1010xxxzxzxxzzzxxxxzzxxxzzzzzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
