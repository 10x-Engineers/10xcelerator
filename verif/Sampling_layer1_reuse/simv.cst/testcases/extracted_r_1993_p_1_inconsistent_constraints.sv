class c_1993_1;
    integer i = -331;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1993_1;
    c_1993_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101x1010x010x101xxzz0z0x1z00x0x0xzxzxxxxxxxxzzzxzzzxzxxxxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
