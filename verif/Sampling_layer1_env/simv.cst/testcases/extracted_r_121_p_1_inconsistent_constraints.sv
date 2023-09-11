class c_121_1;
    integer i = -19;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_121_1;
    c_121_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzx001xxzzzzx010z0zzx0xz1xz1zz0zxxxxxxzzzzxzxxxxzxzxxxzzzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
