class c_2368_1;
    integer i = -393;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2368_1;
    c_2368_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1x110zzx1100x11xx0011zx0zz00x1zxxxzzxzzzxxxzxzzxzxzzzxxxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
