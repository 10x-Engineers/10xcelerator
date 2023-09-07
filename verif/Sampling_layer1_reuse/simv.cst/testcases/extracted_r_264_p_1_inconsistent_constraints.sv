class c_264_1;
    integer i = -42;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_264_1;
    c_264_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxzz00xx100zxxx01z1z0110100z01zxxzxxzzzzxxzzzxzxzzxzxxzxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
