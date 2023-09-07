class c_1728_1;
    integer i = -286;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1728_1;
    c_1728_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzzx0z0z111z1zx100x0xz010z00xz0zzxzxxxxxxxxxzzzzzzzzzxzxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
