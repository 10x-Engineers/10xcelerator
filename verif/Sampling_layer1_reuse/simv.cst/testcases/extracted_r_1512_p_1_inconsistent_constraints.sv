class c_1512_1;
    integer i = -250;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1512_1;
    c_1512_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0100zz110x001zxz0x11zzx0x000z1zzzzxzxxxxxxzxzzxzzzxxxxxxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
