class c_577_1;
    integer i = -95;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_577_1;
    c_577_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzzx00xz001z1101zx101zzz1z01xzxxxxxxxzxxzzzzzxxxxxzzxxxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
