class c_976_1;
    integer i = -161;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_976_1;
    c_976_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0zzz10x0xxx0z0xz100z1z1x10x001zxxxzxxzzzzxxxxxxxxxxxzxzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
