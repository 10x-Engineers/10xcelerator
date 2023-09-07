class c_2799_1;
    integer i = -465;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2799_1;
    c_2799_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000z0001x1101zxx1xz0010z0z10z1z0zzxxxxzxxzxzxzxzxzxxzzxzxxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
