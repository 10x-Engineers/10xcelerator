class c_133_1;
    integer i = -21;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_133_1;
    c_133_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0x111111xz0x11x00z1xz11zx000z1xxzzzzxzxzzzxxxzzzxzxxzxxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
