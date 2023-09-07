class c_880_1;
    integer i = -145;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_880_1;
    c_880_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0xz1zz1xx1x1z01xx1x00zx0100zzxzzzzxzxzzzxxxzzzxxxzxzxxxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
