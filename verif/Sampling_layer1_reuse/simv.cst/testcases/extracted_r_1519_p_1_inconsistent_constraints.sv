class c_1519_1;
    integer i = -252;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1519_1;
    c_1519_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001010xzz10z001xxzzzx0xx1zzzzzxzzzxxxzxzzzxxzxzxzzxzzxzzzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
