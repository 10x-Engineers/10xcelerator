class c_2176_1;
    integer i = -361;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2176_1;
    c_2176_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x110z1xxz11x00zz111x110zxxz1zxzxxxzxzzzzxzxzzxxzzxzxxxzxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
