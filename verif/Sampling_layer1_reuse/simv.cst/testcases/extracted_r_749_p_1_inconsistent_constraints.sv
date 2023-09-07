class c_749_1;
    integer i = -123;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_749_1;
    c_749_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxz0xxzzxz0010000xzzxzx001zz01zzxxxxzzzzzzzzxxzxxxxzzxxxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
