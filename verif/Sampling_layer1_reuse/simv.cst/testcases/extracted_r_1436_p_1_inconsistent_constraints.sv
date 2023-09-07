class c_1436_1;
    integer i = -238;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1436_1;
    c_1436_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0x00zzx111x00z1z0z1zz00zzx10x0xxzzxzxzzxxzxxzzzxzxzzzzxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
