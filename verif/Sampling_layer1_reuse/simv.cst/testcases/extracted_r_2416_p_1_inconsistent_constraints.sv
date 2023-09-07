class c_2416_1;
    integer i = -401;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2416_1;
    c_2416_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz000x0z0xz11z0x110x1zz11zz00zzzxxxzxxxzzzxxxxxxzzzzzxzzzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
