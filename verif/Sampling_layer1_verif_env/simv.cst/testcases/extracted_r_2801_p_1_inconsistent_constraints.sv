class c_2801_1;
    integer i = -465;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2801_1;
    c_2801_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1xzxx00z1zzxxzzx0x01x1111z10xzzzzxxxzxxxzzxzxzxxxzxxzxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
