class c_1155_1;
    integer i = -191;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1155_1;
    c_1155_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1x00xzz00x110xz1xx01xx11111zzzxxxzzzxxxzzzxxxzzzzxzxzzxzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
