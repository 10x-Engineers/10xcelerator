class c_323_1;
    integer i = -52;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_323_1;
    c_323_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z1x110z1zz01xx1z0000z0xz1x101zzxxxzzxxxxxxzzzzzzxzzzzxxxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
