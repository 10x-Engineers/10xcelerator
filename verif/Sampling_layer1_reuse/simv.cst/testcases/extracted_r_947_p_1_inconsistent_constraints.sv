class c_947_1;
    integer i = -156;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_947_1;
    c_947_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x0xzz0xxx1zz1101z01zzz1x101x11xzxxxxxxzxzzxxzzxxxzzzxzzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
