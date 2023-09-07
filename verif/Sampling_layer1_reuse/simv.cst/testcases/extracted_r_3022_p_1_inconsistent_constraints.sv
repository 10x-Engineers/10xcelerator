class c_3022_1;
    integer i = -502;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3022_1;
    c_3022_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1z1z01xz01001xx11x1zx1z0x111z1xzxxxxzxzxxxxxxxzxxzxxxzxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
