class c_3349_1;
    integer i = -557;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3349_1;
    c_3349_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z0xxzz10zzx0x0zx0x10z0zz1x101xxxzxxxzzxxxzzzzzzzxxzzzzxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
