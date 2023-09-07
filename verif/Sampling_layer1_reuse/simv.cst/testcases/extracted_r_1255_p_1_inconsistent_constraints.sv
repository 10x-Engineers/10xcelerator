class c_1255_1;
    integer i = -208;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1255_1;
    c_1255_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zx0x111xz0110zxzzxx01x010x101zxzzzzxzzxxxzxzxzzzxzxxxzzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
