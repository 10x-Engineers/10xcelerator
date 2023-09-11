class c_2409_1;
    integer i = -400;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2409_1;
    c_2409_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x00x111zzxx10x111x0z111z0z0z10xzxxzzzzzxxzxxzxzxzxzzzzxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
