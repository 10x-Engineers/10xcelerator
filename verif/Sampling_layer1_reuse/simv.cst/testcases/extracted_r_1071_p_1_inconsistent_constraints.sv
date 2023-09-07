class c_1071_1;
    integer i = -177;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1071_1;
    c_1071_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11xxz0z1xx1zxx11zxx111x0xx0zzxxzzzzzxxzxxxzxxzzxxzxzxxzxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
