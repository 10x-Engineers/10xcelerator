class c_2472_1;
    integer i = -410;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2472_1;
    c_2472_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00zxx011zzz1x01zz00100xx0001z0xxxxzzxzxzxzzxzxzxxzxxzzxzzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
