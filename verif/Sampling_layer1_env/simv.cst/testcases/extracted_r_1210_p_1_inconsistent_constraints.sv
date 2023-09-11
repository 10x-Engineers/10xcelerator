class c_1210_1;
    integer i = -200;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1210_1;
    c_1210_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z0z1z011z1x010z101xz100xxz0x00zxzzzxxxxzzzzzzxxxxxxxxxzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
