class c_1639_1;
    integer i = -272;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1639_1;
    c_1639_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz01xxx0x100001z10100xz000xx01x1zxzzxzxxzzxxxzzzzxxxxzxxxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
