class c_1521_1;
    integer i = -252;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1521_1;
    c_1521_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz11zz10xx00z1z1x11z000z1x00zz1xxxzzzxzzxxzxzxzzzzzzxzxzxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
