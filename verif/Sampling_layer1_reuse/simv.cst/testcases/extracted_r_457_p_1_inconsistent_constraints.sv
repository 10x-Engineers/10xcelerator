class c_457_1;
    integer i = -75;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_457_1;
    c_457_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00101111z0x0zx1zx11zz0z00x00x0x1zzzzzzxxxxxzzzxxxzxzzxzxxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
