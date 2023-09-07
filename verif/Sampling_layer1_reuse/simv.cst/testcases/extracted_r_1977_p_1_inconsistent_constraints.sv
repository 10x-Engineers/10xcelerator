class c_1977_1;
    integer i = -328;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1977_1;
    c_1977_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x101x1x0x00zz00zx1x1zx0zx111zzxxxzxxzxzzxxxxxxxxzxzxzxzzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
