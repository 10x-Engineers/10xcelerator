class c_761_1;
    integer i = -125;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_761_1;
    c_761_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz10z0x0x1z1x101x1xz01x0x000zz1zxxxxzzzxzzzxzxzxzxxxxxxzzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
