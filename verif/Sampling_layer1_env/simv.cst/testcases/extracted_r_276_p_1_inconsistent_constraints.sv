class c_276_1;
    integer i = -44;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_276_1;
    c_276_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1x01x0zx10xz10xz01x1zzxz1z0xxxxzzzzxxzxxzxzzzzzzxzzxzzxxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
