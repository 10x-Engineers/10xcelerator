class c_1083_1;
    integer i = -179;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1083_1;
    c_1083_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzzz01111x11z1z01101zz1xzzzxz01xzxzzxzzzzxzxzzxxzzxzzxzzzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
