class c_3000_1;
    integer i = -498;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3000_1;
    c_3000_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z10x0xz0x0zzx0zz1zxx1zz1xz110zzxxxzzzxxzxxzxxzzxxxzxxxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
