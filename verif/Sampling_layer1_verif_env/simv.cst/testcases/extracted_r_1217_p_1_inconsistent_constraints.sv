class c_1217_1;
    integer i = -201;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1217_1;
    c_1217_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0110z111x1z000xxxzz001xxzx1zxzxxxxxxxzxzxzzzzxzzxzzzxxzxxzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
