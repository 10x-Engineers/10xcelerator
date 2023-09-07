class c_416_1;
    integer i = -68;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_416_1;
    c_416_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11zx11zx11x111zzxxz1z1z110x0100xxxzzxxzxzzzzzxzxzxzzzxzzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
