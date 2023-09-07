class c_298_1;
    integer i = -48;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_298_1;
    c_298_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1010z01xzxx1zx010x1x10111011x1zxzzxxxxzxxxxxzzxxxzxzxxxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
