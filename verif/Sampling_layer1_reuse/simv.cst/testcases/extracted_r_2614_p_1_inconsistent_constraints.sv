class c_2614_1;
    integer i = -434;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2614_1;
    c_2614_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzxxzx1z0z00z1zz10x0x00000001zxxxxxxzzzzxzzzzzxzzxzxzzzxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
