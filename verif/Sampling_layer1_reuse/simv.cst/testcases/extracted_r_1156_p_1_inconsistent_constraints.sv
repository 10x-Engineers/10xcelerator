class c_1156_1;
    integer i = -191;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1156_1;
    c_1156_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxxx11z110101z11zzx0zzz0010zx11xxzzzzxzzzxxzxxxxzxxzxzxzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
